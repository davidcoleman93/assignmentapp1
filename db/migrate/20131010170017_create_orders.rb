class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :product_id
      t.date :date
      t.string :deliverycharge
      t.decimal :total

      t.timestamps
    end
  end
end
