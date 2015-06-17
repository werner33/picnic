class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def ensure_admin!
      unless current_user.try(:admin?)
        redirect_to new_user_session_path
        flash[:alert] = "You are not authorized to do this."
        return false
      end
  end
  
  def after_sign_in_path_for(resource)
    # @picnic = Picnic.where('date >= ?', Date.today).order(:date).first_name
    picnics_url
  end
end
