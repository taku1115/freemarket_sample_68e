class PurchaseController < ApplicationController
    
    before_action :move_to_login
    before_action :move_to_index

    require 'payjp'
  
    def index
      @item = Item.find(params[:item_id])
      @item_images = @item.item_images.limit(1)
      card = Card.where(user_id: current_user.id).first
      #Cardテーブルからpayjpの顧客IDを検索
      if card.blank?
        #登録された情報がない場合にカード登録画面に移動
        redirect_to controller: "card", action: "new"
      else
        Payjp.api_key =  Rails.application.credentials[:PAYJP_PRIVATE_KEY]
        #保管した顧客IDでpayjpから情報取得
        customer = Payjp::Customer.retrieve(card.customer_id)
        #保管したカードIDでpayjpから情報取得、カード情報表示のためインスタンス変数に代入
        @default_card_information = customer.cards.retrieve(card.card_id)
      end
    end
  
    def pay
      @item = Item.find(params[:item_id])
      @item.update( trading_status: 0 )
      card = Card.where(user_id: current_user.id).first
      Payjp.api_key =  Rails.application.credentials[:PAYJP_PRIVATE_KEY]
      Payjp::Charge.create(
      :amount => @item.price, #支払金額を入力（itemテーブル等に紐づけても良い）
      :customer => card.customer_id, #顧客ID
      :currency => 'jpy', #日本円
    )
    redirect_to action: 'done' #完了画面に移動
    end

    def done
      @item = Item.find(params[:item_id])
      @item_images = @item.item_images.limit(1)
    end

    private 
    def move_to_index
      @item = Item.find(params[:item_id])
      redirect_to root_path if @item.saler.id == current_user.id || @item.trading_status == 0
    end

    def move_to_login
      redirect_to user_session_path unless user_signed_in?
    end
  
  end