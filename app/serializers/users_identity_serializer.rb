class UserIdentitySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :identity_id
end
