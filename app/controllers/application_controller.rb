class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  after_action :store_location

  def store_location
    if (request.fullpath != new_user_registration_path &&
        request.fullpath != new_user_session_path &&
        request.fullpath != new_admin_session_path &&
        request.fullpath != Regexp.new("\\A/users/password.*\\z") && !request.xhr?)
      session[:previous_url] = request.fullpath
    end
  end

  def after_sign_in_path_for(resource)
    if (session[:previous_url] == root_path)
      super
    else
      session[:previous_url] || root_path
    end
  end

  def authenticate_user_admin
    redirect_to new_user_session_path unless current_user = user_signed_in? || admin_signed_in?
  end
end
