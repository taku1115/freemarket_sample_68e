class AddPrefectureCodeToShippings < ActiveRecord::Migration[5.2]
  def change
    add_column :shippings, :prefecture_code, :integer, null:false
  end
end
