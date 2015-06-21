class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
  	@home = 'Home' 
  	@Cadastro = 'Cadastro' 
  	@Controle = 'Controle' 
  	@Sistema = 'Sistema'
  end
end