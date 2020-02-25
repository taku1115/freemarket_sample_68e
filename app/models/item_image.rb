class ItemImage < ApplicationRecord
  mount_uploader :image_url, ImageUploader
  # mount_uploaders :image_url, ImageUploader
  belongs_to :item
end
