class ItemsController < ApplicationController
  
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(items_params)
  end

  def show
    @item = Item.find(1)
    @image = ItemImage.all
    @parent = Category.find(6)
    @brand = Brand.find(1)
    @size = Size.find(1)
  end

  private
  def items_params
    params.require(:item).permit(:name, :text, :condition, :price, :trading_status, :completed_at)
  end

end
