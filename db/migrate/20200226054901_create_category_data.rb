class CreateCategoryData < ActiveRecord::Migration[5.2]
  def change
    create_table :category_data do |t|
      t.string :name, null: false
      t.string :ancestry
      t.integer :category_user_id, null: false
      t.timestamps
    end
  end
end
