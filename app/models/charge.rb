class Charge < ApplicationRecord
  # this would automatically delete a charge when its associated product is destroyed
  belongs_to :product, dependent: :destroy
  belongs_to :user


  validates :customer_name, presence: true, length: {maximum: 60}
  # this breaks the case where a user makes a purchase on their own. no user_id needed.
  validates :amount, :user_id, :product_id, presence: true, :numericality => true


end
