class Event < ApplicationRecord
  belongs_to :social_action
  has_many :payments
  has_many :donors, through: :payments

end
