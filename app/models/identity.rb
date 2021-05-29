class Identity < ApplicationRecord
  has_many :categories
  has_many :users, through: :categories
  validates_uniqueness_of :name
end
