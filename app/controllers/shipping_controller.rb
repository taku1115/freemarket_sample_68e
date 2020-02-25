# class ShippingController < ApplicationController
  
#   def index
#     @shippings = spping.all
#   end

#   def new
#     @shipping = Shipping.new
#   end

#   def create
#     shipping.create(shippings_params)
#   end

#   def show
#   end

  private
  def shippings_params
    params.require(:shipping).permit(:name, :created_at, :text, :condition, :price, :trading_status, :completed_at, shipping_attributes:[:id, :fee_burden, :area, :handling_time])
  end
end
