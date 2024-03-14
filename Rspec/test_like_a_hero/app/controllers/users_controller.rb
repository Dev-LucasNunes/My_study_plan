class UsersController < ApplicationController
  def index
    @users = Users.all
  end

  def create
    @user = User.create(user_params)
    redirect_to users_path
  end

  private

    def user_params
      params.require(:user).permit(:nickname, :kind, :level)
    end
end
