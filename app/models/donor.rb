class Donor < ApplicationRecord
  has_many :payments
  validates :email, uniqueness: true
  validates :name, :email, presence: true
end
