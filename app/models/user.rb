class User < ApplicationRecord
  has_many :friendships
  has_many :friends, through: :friendships

  has_one :profile
  has_many :userskills
  has_many :skills, through: :userskills

  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }
end
