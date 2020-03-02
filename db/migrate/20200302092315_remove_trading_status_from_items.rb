class RemoveTradingStatusFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :trading_status, :string
  end
end
