class UserSerializer < ActiveModel::Serializer
  attributes :id, :email

  has_many :followers, through: :followships

  has_one :profile
  has_many :skills, through: :userskills

  has_many :posts

  has_many :userevents, foreign_key: "invitee_id"
  has_many :events, foreign_key: "host_id"

end
