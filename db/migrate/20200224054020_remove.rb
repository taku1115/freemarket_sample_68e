class Remove < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :shipping_id, :string
  end
end
