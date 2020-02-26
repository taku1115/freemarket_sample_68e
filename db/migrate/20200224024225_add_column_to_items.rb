class AddColumnToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :delivery_fee_id, :integer, null: false
    add_column :items, :delivery_handlingtime_id, :integer, null: false
  end
end
