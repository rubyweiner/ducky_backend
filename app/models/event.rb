class Event < ApplicationRecord
  belongs_to :host, class_name: "User", foreign_key: :host_id
  has_many :userevents
  has_many :invitees, :through => :userevents, :source => :user
end
