class Match < ApplicationRecord
    belongs_to :liker, class_name: 'User'
    belongs_to :liked, class_name: 'User'

    
end 