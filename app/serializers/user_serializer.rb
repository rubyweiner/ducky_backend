class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  # has_many :friendships
  # has_many :friends, through: :friendships
  # has_many :skills
  # has_many :educations
  has_one :profile

end
