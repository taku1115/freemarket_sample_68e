class Shipping < ApplicationRecord
  belongs_to :item , optional:true
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :delivery_fee
  belongs_to_active_hash :delivery_handlingtime
  include JpPrefecture
  jp_prefecture :prefecture_code
end
