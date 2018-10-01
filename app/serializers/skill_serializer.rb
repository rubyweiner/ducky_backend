class SkillSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :users, through: :userskills

  has_many :profiles, through: :users
end
