class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :category , null: false, FK: true
      t.references :shipping, null: false, FK: true
      t.references :bland, null: false, FK: true
      t.references :seller_user, null: false, FK: true
      t.string :name, null: false
      t.text :text, null: false
      t.integer :condition, null: false
      t.integer :price, null: false
      t.integer :trading_status, null: false
      t.datetime :completed_at
      t.timestamps
    end
  end
end
