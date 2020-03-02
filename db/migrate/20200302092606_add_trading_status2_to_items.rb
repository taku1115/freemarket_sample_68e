class AddTradingStatus2ToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :trading_status, :integer,default: "1"
  end
end
