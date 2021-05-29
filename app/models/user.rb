class User < ApplicationRecord
    has_many :pronouns, :foreign_key => current_user
end
