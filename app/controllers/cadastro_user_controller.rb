class CadastroUserController < ApplicationController
  before_filter :authenticate_user!
  def cadastroUser
  end
end
