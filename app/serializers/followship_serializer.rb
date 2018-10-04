class FollowshipSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :follower_id
  attributes :id, :user_id, :follower_id

  belongs_to :user, foreign_key: :user_id
  belongs_to :user, foreign_key: :follower_id
end
