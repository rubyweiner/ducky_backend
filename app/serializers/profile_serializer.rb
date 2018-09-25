class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :dob, :hometown, :current_location, :github, :blog,:bio, :profile_pic, :cover_photo, :occupation, :education, :company, :user_id
end
