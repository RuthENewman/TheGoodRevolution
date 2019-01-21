class Donation < ApplicationRecord
  has_many :donors
  belongs_to :event
  validates :name, :amount, presence: true
  validates :amount, numericality: { greater_than: 0}

end
