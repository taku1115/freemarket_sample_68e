class RemoveCategryIdFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :category_user_id, :integer
  end
end
