class Ability
  include CanCan::Ability

  def initialize(user)
    
    user ||= Usuario.new(papel: Papel.find_by_nome('Visitante')) # guest user (not logged in)
    if user.admin?
        can :manage, :all
      
    elsif user.usuario?
        can [:read, :create, :ver_coluna_publicado], [Conformidade, Fornecedor]

    else #visitante
        can :read, [Conformidade, Fornecedor], {publicado: true}
    end
  end
    
end
