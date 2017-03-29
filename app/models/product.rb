class Product < ApplicationRecord

  has_many :charges
  has_many :users, through: :charges

  has_many :transactions
  has_many :users, through: :transactions

## WORK IN PROG
  # validates :name, presence: true, length: {maximum: 50}
  # validates :description, presence: true, length: {maximum: 300}
  # validates :min_price, presence: true, :numericality => true

end
