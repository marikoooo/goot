class HomeController < ApplicationController
  layout 'home'
  def index
    @user = current_user
    @countries = Country.all
  end
end
