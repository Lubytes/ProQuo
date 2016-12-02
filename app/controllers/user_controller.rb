class UserController < ApplicationController
    before_action :set_user, only: [:show, :update]
    include ApplicationHelper

    # User profile.
    # TODO get list of props owned by user ready.
    def show
        if @user.nil?
            render 'no_user'
        end
    end

    # Register page
    def new
        @user = User.new
    end

    # Register post that will actually create the user.
    # TODO actualy send email.
    # TODO make intermidiary step for user to not be active until email.
    def create
        @user = User.new(user_params)
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

    def update
        @user.attributes = user_update_params
        @user.avatar = params.fetch(:user, {}).fetch(:avatar, @user.avatar)# THIS IS A VERY BAD FIX.  TODO SOMETHING ELSE.
        if @user.save
            redirect_to profile_path, username: @user.username, notice: 'Your user successfully updated.'
        else
            if @user.errors.full_messages.any?
                @user.errors.full_messages.each do |error_message|
                    addToErrors(:editError, error_message)
                end
            end
            redirect_to profile_path, username: @user.username, notice: 'Something went wrong, your user was not updated.'
        end
    end

    private

    def set_user
        @user = User.find_by_username(params[:username])
    end

    def user_params
        params.permit(:username, :full_name, :email, :password, :password_confirmation, :description, :avatar)
    end

    def user_update_params
        params.permit(:password, :password_confirmation)
    end

end
