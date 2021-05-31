class Status < ApplicationRecord
  has_many :users_statuses
  has_many :users, through: :users_statuses
  validates_uniqueness_of :name
end
