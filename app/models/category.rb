class Category < ApplicationRecord
  belongs_to :users
  belongs_to :politics
  belongs_to :pronouns
  belongs_to :status
  belongs_to :identities
  belongs_to :looking_fors
  belongs_to :interests
end
