class Identity < ApplicationRecord
  has_many :users_identities
  has_many :users, through: :users_identities
  validates_uniqueness_of :name
end
