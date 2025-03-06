# frozen_string_literal: true
require_relative "../lib/password_generator"



RSpec.describe PasswordGenerator::Generator do
  it "gera uma senha com o comprimento correto" do
    gerador = PasswordGenerator::Generator.new(10)
    senha = gerador.gerar_senha
    expect(senha.length).to eq(10)
  end
end
