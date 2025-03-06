module PasswordGenerator
    class Generator
      def initialize(comprimento)
        # Valida o comprimento mínimo necessário para garantir diversidade de caracteres
        @comprimento = [comprimento, 4].max
      end
  
      # Método para gerar senha aleatória
      def gerar_senha
        # Define os conjuntos de caracteres permitidos
        letras_maiusculas = ('A'..'Z').to_a
        letras_minusculas = ('a'..'z').to_a
        numeros = ('0'..'9').to_a
        caracteres_especiais = ['!', '@', '#', '$', '%', '^', '&', '*']
  
        # Garante que pelo menos um caractere de cada tipo seja incluído
        senha = []
        senha << letras_maiusculas.sample
        senha << letras_minusculas.sample
        senha << numeros.sample
        senha << caracteres_especiais.sample
  
        # Preenche o restante da senha com caracteres aleatórios de todos os grupos
        todos_caracteres = letras_maiusculas + letras_minusculas + numeros + caracteres_especiais
        senha += Array.new(@comprimento - senha.length) { todos_caracteres.sample }
  
        # Embaralha a senha para garantir que os caracteres estejam em ordem aleatória
        senha.shuffle.join
      end
    end
  end
  