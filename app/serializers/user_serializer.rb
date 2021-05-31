class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  
  # has_many :users_pronouns
  # has_many :users_interests
  # has_many :users_identities
  # has_many :users_looking_fors
  # has_many :users_politics
  # has_many :users_statuses

  has_many :pronouns, through: :users_pronouns
  has_many :interests, through: :users_interests
  has_many :identities, through: :users_identities
  has_many :looking_fors, through: :users_looking_fors
  has_many :politics, through: :users_politics
  has_many :statuses, through: :users_statuses

end


