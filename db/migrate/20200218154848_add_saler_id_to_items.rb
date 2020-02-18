class AddSalerIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :saler_id, :string, null: false
  end
end
