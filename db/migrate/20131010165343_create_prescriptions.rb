class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.integer :customer_id
      t.integer :product_id
      t.string :dosage
      t.integer :limit
      t.date :expirydate
      t.string :prescriber

      t.timestamps
    end
  end
end
