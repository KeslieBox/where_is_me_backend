class UsersLookingFor < ApplicationRecord
    belongs_to :user
    belongs_to :looking_for
end
