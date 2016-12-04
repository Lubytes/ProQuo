class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # To allow login checking on any function.
  include SessionsHelper

  def index
      if params[:search].nil?
        @searchResults = Prop.all()
      else
        @searchResults = Prop.joins(:user).where('name LIKE ? OR props.description LIKE ? OR username LIKE ? OR full_name LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%","%#{params[:search]}%")
      end
  end
end
