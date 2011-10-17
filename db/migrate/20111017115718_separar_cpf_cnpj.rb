class SepararCpfCnpj < ActiveRecord::Migration
  def change
  	rename_column :fornecedores, :cnpj_cpf, :cpf
    add_column :fornecedores, :cnpj, :string
    add_column :fornecedores, :pj, :boolean
  end
end
