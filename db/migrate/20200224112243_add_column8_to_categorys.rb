class AddColumn8ToCategorys < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :category_user_id, :integer, null: false
  end
end
