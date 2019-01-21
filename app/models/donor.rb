class Donor < ApplicationRecord
  has_many :donations
  validates :email, uniqueness: true
  validates :name, :email, presence: true
end
