class User < ApplicationRecord
  has_secure_password
  has_many :payments
  validates :email, uniqueness: true
  validates :name, :email, presence: true
  # attr_accessor :email, :password, :password_confirmation
end
