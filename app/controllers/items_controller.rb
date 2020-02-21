class ItemsController < ApplicationController
  
  def index
    @items = Item.all
    @item_images = ItemImage.all
    @parents =Category.all.order("id ASC").limit(2)
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
    @item_images = ItemImage.find(params[:id])
  end

  def search
    respond_to do |format|
      format.html
      format.json do
        @children = Category.find(params[:parent_id].children)
    end
  end
end

  private
  def items_params
    params.require(:item).permit(:name, :created_at, :text, :condition, :price, :trading_status, :completed_at,shipping_attributes:[:id, :fee_burden, :area, :handling_time])
  end
end