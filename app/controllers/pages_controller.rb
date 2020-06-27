class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :faq ]

  def home
    @users = User.order(birthday: :desc)
    @wishes = Wish.all
    @boy_users = User.where(gender: 'M').order(birthday: :desc)
    @girl_users = User.where(gender: 'F').order(birthday: :desc)
  end

  def faq
  end
end
