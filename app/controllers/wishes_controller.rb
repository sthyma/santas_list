class WishesController < ApplicationController
  before_action :find_wish, only: [:edit, :update, :destroy]

  def new
    @wish = Wish.new
  end

  def create
    @wish = Wish.new(wishes_params)
    @wish.user = current_user

    if @wish.save
      redirect_to root_path #Change this to profile when User controller generated
      flash.notice = "🤖 Ton voeu a été créé! Espèrons que Père Noël l'exaucera!"
    else
      flash.alert = "🤖 Oh-oh... Il y a un petit problème interne... Peux-tu réessayer?"
      render :new
    end
  end

  def edit
  end 
  
  def update
    @wish = Wish.update(wishes_params)

    if @wish.save
      redirect_to root_path #Change this to profile when User controller generated
      flash.notice = "🤖 Ton voeu a été mis à jour! Espèrons que Père Noël l'exaucera!"
    else
      flash.alert = "🤖 Oh-oh... Il y a un petit problème interne... Peux-tu réessayer?"
      render :edit
    end    
  end
  
  def destroy
    if @wish.destroy
      redirect_to root_path #Change this to profile when User controller generated
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
    params.require(:wish).permit(:name, :category)
  end
end
