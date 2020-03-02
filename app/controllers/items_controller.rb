class ItemsController < ApplicationController
  
  def index

    @items =Item.order("id DESC").limit(4)
    @item_images = ItemImage.limit(1)

    @parents =Category.where(ancestry: nil).limit(13)
  end

  def new
    @item = Item.new
    @item.item_images.limit(1)
    @item.build_shipping
    @item.build_category
    @categories = Category.where(ancestry: nil).limit(13)
  end
  
  def create
  
    @item = Item.new(items_params)
    @categories = Categeory.where(ancestry: nil).limit(13)
    if @item.save
      redirect_to root_path
    else
      render :new
    end

  end

  def show
    @item = Item.find(params[:id])
    @item_images = @item.item_images.limit(8)
    @parent = @item.category
    @shipping = @item.shipping
  end

  def edit
    @item = Item.find(params[:id])
    @categories = Category.where(ancestry: nil).limit(13)

    
  end

  def destroy
    @item = Item.find(params[:id])
    @item.saler_id == current_user.id && user_signed_in?
    if @item.destroy
      redirect_to root_path
    else
      redirect_to item_path(@item)
      flash[:alert] ='削除に失敗しました'
  end
end

  def update
    if @item.update(product_params)
      redirect_to root_path
    else
      render :edit
    end
  end


  private
  def items_params
    params.require(:item).permit(:name, :condition_id,:text, :price, :trading_status, :completed_at, shipping_attributes: [:delivery_fee_id, :delivery_handlingtime_id, :prefecture_code], category_attributes: [:name], item_images_attributes: %i[image_url]).merge(saler_id: current_user.id)
  end
end
