class User < ApplicationRecord
  has_many :followships
  has_many :followers, through: :followships

  has_one :profile
  has_many :userskills
  has_many :skills, through: :userskills
  has_many :posts

  has_many :userevents, foreign_key: "invitee_id"
  has_many :events, foreign_key: "host_id"

  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }
end
