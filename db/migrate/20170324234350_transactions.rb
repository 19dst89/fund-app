class Transactions < ActiveRecord::Migration[5.0]

  def change
    create_table :transactions do |t|
      t.references :users
      t.references :products
      t.timestamps
    end
  end

end
