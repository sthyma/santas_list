class WishesController < ApplicationController
  before_action :find_wish, only: [:edit, :update, :destroy]

  def new
    @wish = Wish.new
    @categories = Category.all
  end

  def create
    @wish = Wish.new
    @wish.name = params[:wish][:name]
    @wish.category = Category.find((params[:wish][:category]).to_i)
    @wish.position = (params[:wish][:position]).to_i
    @wish.user = current_user

    if @wish.save
      redirect_to user_path(current_user)
      flash.notice = "🤖 Ton voeu a été créé! Espèrons que Père Noël l'exaucera!"
    else
      redirect_to user_path(current_user)
      flash.alert = "🤖 Oh-oh... Il y a un petit problème interne... Peux-tu réessayer?"
      render :new
    end
  end

  def edit
    @categories = Category.all.map { |category| category.name }
  end 
  
  def update
    name = params[:wish][:name]
    category = Category.find_by(name: (params[:wish][:category]).capitalize)
    
    if (params[:wish][:position]).to_i == 0
      position = nil
    else
      position = (params[:wish][:position]).to_i
    end

    if @wish.update(name: name, category: category, position: position)
      redirect_to user_path(current_user)
      flash.notice = "🤖 Ton voeu a été mis à jour! Espèrons que Père Noël l'exaucera!"
    else
      redirect_to user_path(current_user)
      flash.alert = "🤖 Oh-oh... Il y a un petit problème interne... Peux-tu réessayer?"
    end    
  end
  
  def destroy
    if @wish.destroy
      redirect_to user_path(current_user)
      flash.notice = "🤖 Ton voeu a bel et bien été détruit"
    else
      flash.alert = "🤖 Oh-oh... Il y a un petit problème interne... Peux-tu réessayer?"
    end
  end
  
  private
  def find_wish
    @wish = Wish.find(params[:id])
  end

  def wishes_params
    params.require(:wish).permit(:name, :category_id, :position)
  end
end
