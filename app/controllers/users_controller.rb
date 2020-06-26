class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_wishes = Wish.where(user: @user)
  end
end
