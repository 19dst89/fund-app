class Product < ApplicationRecord

  has_many :charges
  has_many :users, through: :charges

  has_many :transactions
  has_many :users, through: :transactions

end
