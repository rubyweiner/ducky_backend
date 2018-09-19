class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :pw, :first_name, :last_name, :bio, :profile_pic, :cover_photo, :dob, :occupation

  has_many :friendships
  has_many :friends, through: :friendships
  has_many :skills
  has_many :educations
  belongs_to :occupation

end
