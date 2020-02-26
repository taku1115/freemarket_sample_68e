class DropTableCategoryData < ActiveRecord::Migration[5.2]
  def change
    drop_table :category_data
  end
end
