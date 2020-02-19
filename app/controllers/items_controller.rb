class ItemsController < ApplicationController
  
  def index
    @items = Item.all
    @item_images = ItemImage.all
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(items_params)
  end

  def show
    item = Item.find(1)
    @item = item
  end

  private
  def items_params
    params.require(:item).permit(:name, :text, :condition, :price, :trading_status, :completed_at)
  end
end
