class UsersController < ApplicationController

  def show
    @items = Item.all
    @item_images = ItemImage.all
  end 

  def logout
  end

  def card
  end

end
