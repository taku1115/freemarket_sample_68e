class Category < ApplicationRecord
  has_many :items
  has_ancestry
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category_user, optinal:true

  # validates :name,presence: true
end
