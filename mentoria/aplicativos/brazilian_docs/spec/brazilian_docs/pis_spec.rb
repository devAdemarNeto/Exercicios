# spec/brazilian_docs/pis_spec.rb
require "brazilian_docs/pis"

RSpec.describe BrazilianDocs::PIS do
    describe '.valid?' do
      it 'retorna true para um PIS válido' do
        valid_pis = "123.45678.90-0" # Este é um PIS válido para nosso algoritmo
        expect(BrazilianDocs::PIS.valid?(valid_pis)).to be true
      end
      
      it 'retorna false para um PIS inválido' do
        invalid_pis = "123.45678.90-2"
        expect(BrazilianDocs::PIS.valid?(invalid_pis)).to be false
      end
    end
  end
  
  
 
