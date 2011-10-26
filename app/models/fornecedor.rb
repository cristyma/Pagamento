# encoding: utf-8

require "brcpfcnpj"


class Fornecedor < ActiveRecord::Base

  has_many :conformidades
  validates :nome, presence: true
  #validates :cpf, presence: true unless :pj?
  #validates :cnpj, presence: true if :pj?

  usar_como_cpf :cpf
  usar_como_cnpj :cnpj
  validate :cpf_ou_cnpj

  validates :cnpj, presence: true, if: :pj?
  validates :cpf, presence: true, unless: :pj?
  validates_uniqueness_of :cnpj, :cpf


  scope :classificar, order('nome ASC')
  # scope :default, order('id ASC') --> NÃO precisa especificar no fornecedores_controller
  # OUTRA FORMA DE DEFINIR A ORDENAÇAO
  # def self.classificar
  #     order('nome ASC')
  # end

  private
    def cpf_ou_cnpj
      if cpf.present? and cnpj.present?
        errors[:base] << "Você tentou cadastrar CPF e CNPJ juntos"
      end

      if cpf.blank? and cnpj.blank?
        errors[:base] << "CNPJ e CPF estão em branco"
      end
    end
end

  