class RemoveColum6FromShippings < ActiveRecord::Migration[5.2]
  def change
      remove_column :items, :delivery_fee_id, :integer, null: false
      remove_column :items, :delivery_handlingtime_id, :integer, null: false
  end
end
