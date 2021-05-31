class Politic < ApplicationRecord
  has_many :users_politics
  has_many :users, through: :users_politics
  validates_uniqueness_of :name
end
