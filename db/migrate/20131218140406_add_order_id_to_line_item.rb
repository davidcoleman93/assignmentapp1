class AddOrderIdToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :storeorder_id, :integer

  end
end
