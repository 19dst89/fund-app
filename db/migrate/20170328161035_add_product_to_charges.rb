class AddProductToCharges < ActiveRecord::Migration[5.0]
  def change
    add_reference :charges, :product, foreign_key: true
  end
end
