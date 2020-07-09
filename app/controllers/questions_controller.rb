class QuestionsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index    
    @questions = Question.all
    @categories = Category.all.map { |category| category.name }
  end
end
