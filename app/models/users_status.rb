class UsersStatus < ApplicationRecord
    belongs_to :user
    belongs_to :identity
end
