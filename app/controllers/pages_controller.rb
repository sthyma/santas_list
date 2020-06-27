class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :faq ]

  def home
    @users = User.all.order(:created_at)
    @wishes = Wish.all
  end

  def faq
  end
end
