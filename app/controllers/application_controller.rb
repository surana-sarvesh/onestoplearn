class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :application
  layout "favorites" , :only => :do_not_display

  def application
    @show = true
    if user_signed_in?
  		@count = UserFavorite.where(user_id: current_user.id).count
  		if @count > 0
	  		@links = UserFavorite.where(user_id: current_user.id)
	  	end
    end
  end

  def do_not_display
    @show = false
  end
end

