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
    item = Item.find(params[:id])
    @item = item
    @item_images = ItemImage.find(params[:id])
  end

  private
  def items_params
    params.require(:item).permit(:name, :text, :condition, :price, :trading_status, :completed_at)
  end
end
