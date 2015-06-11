class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def ensure_admin!
      unless current_user.try(:admin?)
        redirect_to new_user_session_path
        return false
      end
  end
end
