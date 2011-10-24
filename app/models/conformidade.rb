# encoding: utf-8

class Conformidade < ActiveRecord::Base
  belongs_to :fornecedor

  validates :caixa, format: {with: /\d{3}\/20\d{2}/, message: 'Use o padrão numero/ano (xxx/yyyy)'}
  validates :processo, format: {with: /\d{4}\/20\d{2}/, message: 'Use o padrao numero/ano (xxxx/yyyy)'}
end
