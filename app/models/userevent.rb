class Userevent < ApplicationRecord
  belongs_to :user, foreign_key: :invitee_id
  belongs_to :event
end
