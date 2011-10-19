# encoding: utf-8

require 'spec_helper'

describe Fornecedor do
  it "Fornecedor é valido com nome" do
    Fornecedor.new(nome: 'Fulano', cpf: '52387453115').should be_valid
  end

  it "Fornecedor é invalido sem nome" do
    Fornecedor.new(cpf: '52387453115').should be_invalid
  end

  it "Valida CPF" do
    Fornecedor.new(nome: 'Fulano', cpf: '52387453115').should be_valid
    Fornecedor.new(nome: 'Fulano', cpf: '1').should be_invalid
  end

  it "Valida CNPJ" do
    Fornecedor.new(nome: 'Fulano', cnpj: '00000000000191', pj: true).should be_valid
    Fornecedor.new(nome: 'Fulano', cnpj: '1').should be_invalid
  end

  it "não aceita cpf ou cnpj juntos" do
    Fornecedor.new(nome: 'Fulano', cpf: '52387453115', cnpj: '00000000000191', pj: true).should be_invalid
  end

  it "não aceita cpf ou cnpj vazios" do
    Fornecedor.new(nome: 'Fulano').should be_invalid
  end

  it "Verifica CNPJ quando for PJ" do
    Fornecedor.new(nome: 'Apple', pj: true, cnpj: '00000000000191').should be_valid
    Fornecedor.new(nome: 'Apple', pj: true, cpf: '52387453115').should be_invalid
    
  end

  it "verifica CPF se não é pj" do
    Fornecedor.new(nome: 'Fulano', pj: false, cpf: '52387453115').should be_valid
    Fornecedor.new(nome: 'Fulano', pj: false, cnpj: '00000000000191').should be_invalid
  end

end