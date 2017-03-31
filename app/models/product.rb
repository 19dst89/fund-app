class Product < ApplicationRecord

  has_many :charges
  has_many :users, through: :charges


  validates :name, presence: true, length: {maximum: 50}
  validates :description, presence: true, length: {maximum: 500}
  validates :min_price, :inventory_amount, presence: true, :numericality => true

end
