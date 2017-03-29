class Charge < ApplicationRecord
  belongs_to :product
  belongs_to :user

## WORK IN PROG
  # validates :customer_name, presence: true, length: {maximum: 60}
  # validates :amount, presence: true
  # # validates :customer_email,
  # #   presence: true,
  # #   uniqueness: true,
  # #   length: {maximum: 100},
  # #   format: {
  # #     with: /@/,
  # #     message: "not a valid format"
  # #   }


end
