class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # To allow login checking on any function.
  include SessionsHelper

  def index
      @searchResults = Prop.all
  end
end
