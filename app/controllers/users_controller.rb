class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @items = Item.where(saler_id: current_user.id)
    @item_images = ItemImage.where(item_id: @items.ids)
  end 

  def logout
  end

  def card
  end

end
