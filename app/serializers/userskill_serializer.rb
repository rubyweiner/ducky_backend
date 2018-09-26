class UserskillSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :skill_id

  belongs_to :user
  belongs_to :skill
end
