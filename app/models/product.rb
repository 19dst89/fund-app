class Product < ApplicationRecord

  has_many :charges
  has_many :users, through: :charges

  # X_X
  has_many :transactions
  has_many :users, through: :transactions


  validates :name, presence: true, length: {maximum: 50}
  validates :description, presence: true, length: {maximum: 500}
  # code style: consistency of the way you assign hashes
  validates :min_price, :inventory_amount, presence: true, :numericality => true

end
