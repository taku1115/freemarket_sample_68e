class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.category_id :reference, null: false, FK: true
      t.shipping_id :reference, null: false, FK: true
      t.bland_id :reference, null: false, FK: true
      t.seller_user_id :reference, null: false, FK: true
      t.name :string, null: false
      t.text :text, null: false
      t.condition :integer, null: false
      t.price :integer, null: false
      t.trading_status :integer, null: false
      t.completed_at :datetime
      t.timestamps
    end
  end
end
