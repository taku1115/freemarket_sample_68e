class Item < ApplicationRecord
  has_one :shipping
  belongs_to :saler, class_name: "User",optional:true
  belongs_to :buyer, class_name: "User",optional:true
  belongs_to :user,optional:true
  belongs_to :category,optional:true
  belongs_to :brand,optional:true
  has_many :item_images, dependent: :destroy
  belongs_to :size,optional:true
  accepts_nested_attributes_for :item_images, allow_destroy: true
  accepts_nested_attributes_for :shipping, update_only: true
  accepts_nested_attributes_for :category
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :condition

  validates :name, :text, :price, :trading_status, :condition_id, presence: true
  validates :item_images, presence: true
end
