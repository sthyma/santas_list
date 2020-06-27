class UsersController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @user_wishes = Wish.where(user: @user).order(:position)
  end
end
