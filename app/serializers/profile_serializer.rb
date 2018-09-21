class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :bio, :profile_pic, :cover_photo, :occupation_id, :user_id
end
