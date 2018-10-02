class UsereventSerializer < ActiveModel::Serializer
  attributes :id, :invitee_id, :event_id

  belongs_to :user, foreign_key: :invitee_id
  belongs_to :event
end
