class RemoveColum9FromCotegories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :name, :string, null: false
  end
end
