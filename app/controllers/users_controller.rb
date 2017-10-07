class UsersController < ApplicationController
  before_action :authenticate_user_admin

  def mypage
    @user = User.find(params[:id])
    @journals = current_user.travel_journals.all
    @travelmates = current_user.travel_mates.all
  end
end
