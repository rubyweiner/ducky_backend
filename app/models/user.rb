class User < ApplicationRecord
  # has_many :friendships
  # has_many :friends, through: :friendships
  # has_many :skills
  # has_many :educations
  has_one :profile
  # belongs_to :occupation

  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }
end
