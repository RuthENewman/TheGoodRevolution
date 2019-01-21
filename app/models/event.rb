class Event < ApplicationRecord
  belongs_to :social_action
  has_many :donations
  has_many :donors, through: :donations
  
end
