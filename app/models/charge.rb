class Charge < ApplicationRecord
  belongs_to :product
  belongs_to :user


  validates :customer_name, presence: true, length: {maximum: 60}
  validates :amount, :user_id, :product_id, presence: true, :numericality => true


end
