# encoding: utf-8

require 'spec_helper'

describe Fornecedor do
  it "é valido sem nome" do
    Fornecedor.new(nome: 'Apple').should be_valid
  end

  it "não é valido sem nome" do
    Fornecedor.new.should be_invalid
  end

  it "cpf válido" do
    Fornecedor.new(nome: 'Fulano', cpf: '52387453115').should be_valid
    Fornecedor.new(nome: 'Fulano', cpf: '1').should be_invalid
  end

  it "cnpj válido" do
    Fornecedor.new(nome: 'Fulano', cnpj: '00000000000191').should be_valid
    Fornecedor.new(nome: 'Fulano', cnpj: '1').should be_invalid
  end
end