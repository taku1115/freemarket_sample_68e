class ItemsController < ApplicationController
  
  def index
    @items =Item.order("id Asc").limit(4)
    @item_images = ItemImage.all
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
    @item = Item.create(items_params)
    @categories = Category.where(ancestry: nil).limit(13)
    if @item.save
      redirect_to root_path
    else
      @item.item_images.new
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
    @item_images = @item.item_images.limit(3)
    @parent = @item.category
    @shipping = @item.shipping
  end


  private
  def items_params
    params.require(:item).permit(:name, :condition_id,:text, :price, :trading_status, :buyer, :saler, :completed_at, shipping_attributes: [:delivery_fee_id, :delivery_handlingtime_id, :prefecture_code], category_attributes: [:name], item_images_attributes: %i[image_url])
  end
end
