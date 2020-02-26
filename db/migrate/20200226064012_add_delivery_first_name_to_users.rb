class AddDeliveryFirstNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :delivery_first_name, :string, null:false
    add_column :users, :delivery_family_name, :string, null:false
    add_column :users, :delivery_first_name_kana, :string, null:false
    add_column :users, :delivery_family_name_kana, :string, null:false
    add_column :users, :postal_code, :string, null:false
    add_column :users, :prefectures, :string, null:false
    add_column :users, :municipality, :string, null:false
    add_column :users, :address, :string, null:false
  end
end
