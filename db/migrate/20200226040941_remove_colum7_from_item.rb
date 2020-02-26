class RemoveColum7FromItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :trading_status, :integer, null: false
  end
end
