class HomeController < ApplicationController
  layout 'home'
  def index
    @user = current_user
    @countries = Country.all
    @search = Country.ransack(params[:q])
    @country = @search.result
  end
end
