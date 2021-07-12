class InterestSerializer < ActiveModel::Serializer
    attributes :id, :name, :user_ids, :mutualInterests
  
    has_many :users, through: :users_interests
  end