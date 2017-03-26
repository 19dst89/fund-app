class CreateCharges < ActiveRecord::Migration[5.0]
  def change
    create_table :charges do |t|
      t.integer :customer
      t.string :customer_name
      t.string :customer_email
      t.integer :amount
      t.string :description
      t.string :currency

      t.timestamps
    end
  end
end
