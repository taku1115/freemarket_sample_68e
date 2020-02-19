class Item < ApplicationRecord
  belongs_to :saler, class_name: "User"
  belongs_to :buyer, class_name: "User"
  belongs_to :user
  belongs_to :category
  belongs_to :brand
  has_one :shipping
  has_many :item_images, dependent: :destroy
  belongs_to :size
end
