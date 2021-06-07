class UserStatusSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :status_id
end
