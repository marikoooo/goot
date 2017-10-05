class Admins::UsersController < AdminsController
  def index
    @users = User.all
  end
end