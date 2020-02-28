class ItemsController < ApplicationController
  
  def index
    @items =Item.order("id DESC").limit(4)
    @parents =Category.where(ancestry: nil).limit(13)
  end

  def new
    @item = Item.new
    @item.item_images.new
    @item.build_shipping
    @item.build_category
    @categories = Category.where(ancestry: nil).limit(13)
  end
  
  def create
    Item.create(items_params)
    redirect_to root_path
    
  end
  def show
    @item = Item.find(params[:id])
    @item_images = @item.item_images.limit(8)
    @parent = @item.category
    @shipping = @item.shipping
  end

  def edit
  end

  def destroy
    @item = Item.find(params[:id])
    @item.saler_id == current_user.id && user_signed_in?
    if 
      @item.destroy
      redirect_to root_path
    else
      redirect_to root_path
  end
end

  def update
  end


  private
  def items_params
    params.require(:item).permit(:name, :condition_id,:text, :price, :trading_status, :buyer, :saler, :completed_at, shipping_attributes: [:delivery_fee_id, :delivery_handlingtime_id, :prefecture_code], category_attributes: [:name], item_images_attributes: %i[image_url]).merge(saler_id: current_user.id)
  end
end
