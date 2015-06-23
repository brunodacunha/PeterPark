class SessionsController < ApplicationController
  layout false
  def new
  end
  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to home_index_path, :notice => "Entrou"
    else
      flash.now.alert = "Senha invalida"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Sair!"
  end

end
