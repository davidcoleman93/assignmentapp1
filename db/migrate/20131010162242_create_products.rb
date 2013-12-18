class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :brand
      t.decimal :price
      t.integer :size
      t.boolean :prescriptionreq

      t.timestamps
    end
  end
end
