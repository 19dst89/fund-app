class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :min_price
      t.integer :total_donated_amount
      t.integer :inventory_amount
      t.string :avatar

      t.timestamps
    end
  end
end
