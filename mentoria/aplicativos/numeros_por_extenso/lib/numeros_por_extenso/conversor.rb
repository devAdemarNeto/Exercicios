module NumerosPorExtenso
    class Conversor
      UNIDADES = %w[zero um dois três quatro cinco seis sete oito nove]
      DEZENAS = %w[dez onze doze treze quatorze quinze dezesseis dezessete dezoito dezenove]
      DEZENAS_COMPLETAS = %w[vinte trinta quarenta cinquenta sessenta setenta oitenta noventa]
  
      def self.por_extenso(numero)
        return UNIDADES[numero] if numero < 10
        return DEZENAS[numero - 10] if numero < 20
        return DEZENAS_COMPLETAS[(numero / 10) - 2] if numero < 100
      end
    end
  
    module IntegerExtension
      refine Integer do
        def to_extenso
          Conversor.por_extenso(self)
        end
      end
    end
  end