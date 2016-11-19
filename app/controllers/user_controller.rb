class UserController < ApplicationController

  # User profile.
  # TODO get list of props owned by user ready.
  def show
    @user = User.find_by_username(params[:username])
  end

  # Register page
  def new
    @user = User.new
  end

  # Register post that will actually create the user.
  # TODO actualy send email.
  # TODO make intermidiary step for user to not be active until email.
  def create
    @user = User.new(params[:user])
    @user.username = params[:username]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    if @user.save

      render root, notice: 'Account was created.'
    else
      render "new"
    end
  end
end
