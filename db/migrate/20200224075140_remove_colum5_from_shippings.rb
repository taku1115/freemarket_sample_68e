class RemoveColum5FromShippings < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :delivery_fee_id, :integer, null: false
    remove_column :items, :delivery_handlingtime_id, :integer, null: false
  end
  def change
    add_column :shippings, :delivery_fee_id, :integer, null: false
    add_column :shippings, :delivery_handlingtime_id, :integer, null: false





  end
end
