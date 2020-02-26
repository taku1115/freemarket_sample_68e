class AddColumn11ToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :trading_status, :string, default: "1"

  end
end
