class Charity < ApplicationRecord
  has_many :social_actions
  has_many :events, through: :social_actions
  has_many :donations, through: :social_actions
  validates :name, uniqueness: true
end
