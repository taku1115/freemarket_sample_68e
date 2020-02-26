class RemoveColum3FromCategorys < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :bland_id, :string
    remove_column :items, :condition, :integer
  end
end
