class LookingFor < ApplicationRecord
  belongs_to :current_user, :class_name => 'User'
end
