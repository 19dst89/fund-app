class User < ApplicationRecord

  has_many :charges
  has_many :products, through: :charges

  has_many :transactions
  has_many :products, through: :transactions

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
