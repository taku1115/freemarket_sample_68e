class Item < ApplicationRecord
  has_one :shipping
  accepts_nested_attributes_for :shipping
  belongs_to :saler, class_name: "User"
  belongs_to :buyer, class_name: "User"
  belongs_to :user
  belongs_to :category
  belongs_to :brand
  has_one :shipping
  has_many :item_images, dependent: :destroy
  belongs_to :size
  has_ancestry
end
