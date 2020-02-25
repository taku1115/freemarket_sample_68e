class ItemsController < ApplicationController
  
  def index
    @items =Item.order("id Asc").limit(1)
    @parents =Category.where(ancestry: nil)
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
    item = Item.find(params[:id])
    @item = item
    @item_images = item.item_images.limit(3)
    @parent = item.category
    @shipping = item.shipping
  end


  private
  def items_params
    params.require(:item).permit(:name, :created_at, :text, :condition, :price, :trading_status, :completed_at,shipping_attributes:[:id, :fee_burden, :area, :handling_time])
  end
end