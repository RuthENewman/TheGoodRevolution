class SocialAction < ApplicationRecord
  has_many :events
  belongs_to :charity
  has_many :payments, through: :events
  has_many :users, through: :payments

end
