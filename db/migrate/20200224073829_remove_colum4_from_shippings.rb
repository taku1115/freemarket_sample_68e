class RemoveColum4FromShippings < ActiveRecord::Migration[5.2]
  def change
    remove_column :shippings, :delivery_fee_id, :integer, null: false
    remove_column :shippings, :delivery_handlingtime_id, :integer, null: false
  end
end
