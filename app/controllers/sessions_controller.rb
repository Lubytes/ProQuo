class SessionsController < ApplicationController
  # Login controller.

  include ApplicationHelper

  # Login page
  def new
  end

  # Actually logs the user in.
  def create
    session_params = params[:session]
    user = User.find_by_username(session_params[:username])
    if user and user.password == session_params[:password]
      log_in user
      redirect_to '/users/' + user.username
    else
      addToErrors(:loginErrors,"Invalid Username and Password combination.")
      redirect_to :back
    end
  end

  # When this is called, log out the user.
  def destroy
    log_out
    redirect_to root_url
  end
end
