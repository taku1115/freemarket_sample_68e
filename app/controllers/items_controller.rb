class ItemsController < ApplicationController
  before_action :move_to_login, except: [:index, :show]
  # before_action :move_to_index, expect: [:index, :show]
  def index
    @items =Item.order("id desc").limit(4)
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
    @item = Item.create(item_update_params)
    @categories = Category.where(ancestry: nil).limit(13)
    if @item.save
      #  @item_images.save
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
    @comment = Comment.new
    @comments = @item.comments.includes(:user) 
  end

  def edit
    @item = Item.find(params[:id])
    @item_images = @item.item_images.limit(5)
    @item_images = @item.item_images.new
    @parent = @item.category
    @categories = Category.where(ancestry: nil).limit(13)
    # render "items/item_edit"
    unless current_user.id == @item.saler.id
      redirect_to root_path
    end
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
    @item = Item.find(params[:id])
    @item.update(item_update_params)
    redirect_to item_path(@item)
  end


  private
  def items_params
    params.require(:item).permit(:name, :condition_id, :text, :price, :trading_status, :buyer, :saler, :completed_at, shipping_attributes: [:delivery_fee_id, :delivery_handlingtime_id, :prefecture_code], category_attributes: [:name], item_images_attributes: %i[image_url]).merge(saler_id: current_user.id)
  end

  def item_update_params
    params.require(:item).permit(:name, :condition_id, :text, :price, :trading_status, :buyer, :saler, :completed_at, shipping_attributes: [:delivery_fee_id, :delivery_handlingtime_id, :prefecture_code], item_images_attributes:[:image_url,:_destroy,:id], category_attributes: [:name]).merge(saler_id: current_user.id)
  end

  def move_to_login
    redirect_to user_session_path unless user_signed_in?
  end

  
end
