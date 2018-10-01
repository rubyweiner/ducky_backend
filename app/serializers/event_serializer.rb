class EventSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :users, through: :userevents
end
