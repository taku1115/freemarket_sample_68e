class RemoveUserIdFromItemImages < ActiveRecord::Migration[5.2]
  def change
    remove_reference :item_images, :user, null:false, FK: true
  end
end
