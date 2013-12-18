class CreateStoreorders < ActiveRecord::Migration
  def change
    create_table :storeorders do |t|
      t.string :name
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
