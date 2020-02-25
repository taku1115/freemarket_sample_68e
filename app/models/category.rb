class Category < ApplicationRecord
  has_many :item
  has_ancestry
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category_user
end
