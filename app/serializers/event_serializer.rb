class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :description, :date, :time, :cover_photo, :host_id

  belongs_to :host, class_name: "User"
  has_many :invitees, through: :userevents, class_name: "User"
end
