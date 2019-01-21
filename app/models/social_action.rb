class SocialAction < ApplicationRecord
  has_many :events
  belongs_to :charity
  has_many :donations, through: :events
  has_many :donors, through: :doantions

end
