class Interest < ApplicationRecord
  has_many :users_interests
  has_many :users, through: :users_interests
  validates_uniqueness_of :name
end
