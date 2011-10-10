class HomeController < ApplicationController
  before_filter :authenticate_usuario! # acesso para usuario logado
  def index
  end

end
