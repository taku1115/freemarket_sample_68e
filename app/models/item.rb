class Item < ApplicationRecord
  has_one :shipping
  belongs_to :saler, class_name: "User",optional:true
  belongs_to :buyer, class_name: "User",optional:true
  belongs_to :user,optional:true
  belongs_to :category,optional:true
  belongs_to :brand,optional:true
  has_many :item_images, dependent: :destroy
  belongs_to :size,optional:true
  accepts_nested_attributes_for :item_images, :shipping, :category, allow_destroy: true
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :condition
end
