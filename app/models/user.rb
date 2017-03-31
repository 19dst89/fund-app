class User < ApplicationRecord

  has_many :charges
  has_many :products, through: :charges


  validates :first_name, presence: true, length: {maximum: 50}
  validates :last_name, presence: true, length: {maximum: 50}
  validates :email,
    presence: true,
    uniqueness: true,
    length: {maximum: 100},
    format: {
      with: /@/,
      message: "not a valid format"
    }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
