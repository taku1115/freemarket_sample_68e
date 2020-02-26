class RemoveColumFromShippings < ActiveRecord::Migration[5.2]
  def change
    remove_column :shippings, :fee_burden, :boolean
    remove_column :shippings, :area,:integer
    remove_column :shippings, :handling_time, :integer
    

  end
end
