# encoding: utf-8

class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :papel

  belongs_to :papel # é belongs_to pq tem a chave estrangeira na table ***_id

  def admin?
    papel.nome == 'Administrador'
  end  

  def usuario?
    papel.nome == 'Usuário'
  end  

  def visitante?
    papel.nome == 'Visistante'
  end  
end
