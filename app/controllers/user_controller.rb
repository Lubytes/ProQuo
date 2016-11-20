class UserController < ApplicationController
    include ApplicationHelper

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
            redirect_to :back, notice: 'Account was created.'
        else
            if @user.errors.full_messages.any?
                @user.errors.full_messages.each do |error_message|
                    addToErrors(:registerError, error_message)
                end
            end
            redirect_to :back
        end
    end
<<<<<<< HEAD
=======
  end
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :description, :avatar)
  end
>>>>>>> master
end
