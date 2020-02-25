class AddColumn2Toshippings < ActiveRecord::Migration[5.2]
  def change
    add_column :shippings, :delivery_fee_id, :integer, null: false
    add_column :shippings, :delivery_handlingtime_id, :integer, null: false
  end
end
