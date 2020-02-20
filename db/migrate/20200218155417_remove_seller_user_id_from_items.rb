class RemoveSellerUserIdFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :seller_user_id, :reference
  end
end
