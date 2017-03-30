class Transaction < ApplicationRecord
  # X_X
  belongs_to :product
  belongs_to :user
end
