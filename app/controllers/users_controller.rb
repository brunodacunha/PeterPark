class UsersController < ApplicationController
  layout false
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user].permit(:email, :password, :salt, :encrypted_password))
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end
  
end
