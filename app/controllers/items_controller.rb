class ItemsController < ApplicationController
  
  def index
    @item = Item.all
  end

  def new
    @item = Item.new
    @shipping =Item.new
    @item.build_shipping
  end
  
  def create
    Item.create(items_params)
    # binding.pry
    @shipping =Shipping.all

    redirect_to root_path
    # Shipping.create(shipping_params)
  end

  def show
  end

  private
  def items_params
    params.require(:item).permit(:name, :created_at, :text, :condition, :price, :trading_status, :completed_at,shipping_attributes:[:id, :fee_burden, :area, :handling_time])
  end

end
