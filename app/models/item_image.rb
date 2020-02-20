class ItemImage < ApplicationRecord
  mount_uploader :src, ImageUploader
  belongs_to :item
  belongs_to :user
end
