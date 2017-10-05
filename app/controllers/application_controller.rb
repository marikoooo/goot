class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate_user_admin
    redirect_to new_user_session_path unless current_user = user_signed_in? || admin_signed_in?
  end
end
