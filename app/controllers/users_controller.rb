class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @items = Item.all
    @item_images = ItemImage.all
  end 

  def logout
  end

  def card
  end

end
