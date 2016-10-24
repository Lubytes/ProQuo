class UserController < ApplicationController

  def show
    @user = User.find_by_username(params[:username])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    @user.username = params[:username]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    if @user.save
      render "emailSent"
    else
      render "new"
    end
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
