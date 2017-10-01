class HomeController < ApplicationController
  layout 'home'
  def index
    @user = current_user
  end
end
