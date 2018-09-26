class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  # has_many :friendships
  # has_many :friends, through: :friendships

  has_one :profile
  has_many :skills, through: :userskills

end
