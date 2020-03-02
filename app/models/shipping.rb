class Shipping < ApplicationRecord
  belongs_to :item 
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :delivery_fee
  belongs_to_active_hash :delivery_handlingtime
  include JpPrefecture
  jp_prefecture :prefecture_code

  validates :prefecture_code, :delivery_handlingtime_id ,:delivery_fee_id, presence: true
end
