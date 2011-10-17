# encoding: utf-8

require 'spec_helper'

describe Fornecedor do
  it "é valido com nome" do
    Fornecedor.new(nome: 'Fulano', cpf: '52387453115').should be_valid
  end

  it "é invalido sem nome" do
    Fornecedor.new(cpf: '52387453115').should be_invalid
  end

  it "cpf válido" do
    Fornecedor.new(nome: 'Fulano', cpf: '52387453115').should be_valid
    Fornecedor.new(nome: 'Fulano', cpf: '1').should be_invalid
  end

  it "cnpj válido" do
    Fornecedor.new(nome: 'Fulano', cnpj: '00000000000191').should be_valid
    Fornecedor.new(nome: 'Fulano', cnpj: '1').should be_invalid
  end

  it "não aceita cpf ou cnpj juntos" do
    Fornecedor.new(nome: 'Fulano', cpf: '52387453115', cnpj: '00000000000191').should be_invalid
  end

  it "não aceita cpf ou cnpj vazios" do
    Fornecedor.new(nome: 'Fulano').should be_invalid
  end

end