class UserSerializer < ActiveModel::Serializer
  attributes :id, :email


  has_many :followers, through: :followships

  has_one :profile
  has_many :skills, through: :userskills

  has_many :posts

  has_many :events, through: :userevents

end
