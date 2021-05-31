class LookingFor < ApplicationRecord
  has_many :users_looking_fors
  has_many :users, through: :users_looking_fors
  validates_uniqueness_of :name
end
