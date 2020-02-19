class AddReferencesToItemImages < ActiveRecord::Migration[5.2]
  def change
    add_reference :item_images, :item, null: false, FK: true
  end
end
