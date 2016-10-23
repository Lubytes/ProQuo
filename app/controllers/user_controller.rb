class UserController < ApplicationController

  def create
    @user = User.new(params[:user])
    @user.password = params[:password]
    @user.save!
  end

  def login
    @user = User.find_by_email(params[:email])
    if @user.password == params[:password]
      give_token
    else
      # redirect_to whatever page you want. TODO
    end
  end
end
