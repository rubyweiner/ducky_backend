class UserSerializer < ActiveModel::Serializer
  attributes :email, :password
  # has_many :friendships
  # has_many :friends, through: :friendships
  # has_many :skills
  # has_many :educations
  # belongs_to :occupation
  has_one :profile

end
