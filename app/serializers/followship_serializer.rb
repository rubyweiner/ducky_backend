class FollowshipSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :follower_id
end
