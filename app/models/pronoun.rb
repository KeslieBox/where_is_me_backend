class Pronoun < ApplicationRecord
  has_many :categories
  has_many :user, through: :categories
  validates_uniqueness_of :name
end
