class HomeController < ApplicationController
  def index
  	@home = 'Home' 
  	@Cadastro = 'Cadastro' 
  	@Controle = 'Controle' 
  	@Sistema = 'Sistema'
  end
end