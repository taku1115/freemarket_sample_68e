class RemoveBuyerIdFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :saler_id, :string, null: false
    remove_column :items, :buyer_id, :string, null: false
  end
end
