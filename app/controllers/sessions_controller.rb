class SessionsController < ApplicationController
  # Login controller.

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
      flash.now[:danger] = "Invalid Username and password Combination."
      render 'new'
    end
  end

  # When this is called, log out the user.
  # TODO fix this to be a post, right now is get.
  def destroy
    log_out
    redirect_to root_url
  end
end
