class Donor < ApplicationRecord
  has_secure_password
  has_many :payments
  validates :email, uniqueness: true
  validates :name, :email, presence: true

end
