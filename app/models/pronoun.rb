class Pronoun < ApplicationRecord
  has_many :users_pronouns
  has_many :users, through: :users_pronouns
  validates_uniqueness_of :name
end
