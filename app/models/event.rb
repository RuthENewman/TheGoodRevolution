class Event < ApplicationRecord
  belongs_to :social_action
  has_many :payments
  has_many :users, through: :payments

end
