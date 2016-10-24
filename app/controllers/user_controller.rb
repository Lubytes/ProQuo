class UserController < ApplicationController

  def show
    @user = User.find_by_username(params[:username])
  end

  def create
    @user = User.new(params[:user])
    @user.password = params[:password]
    @user.save!
  end

  def login
    @user = User.find_by_username(params[:username])
    if @user.password == params[:password]
      # TODO what happens at LOGIN
    else
      # TODO what happens if FAIL TO LOGIN
    end
  end
end
