class User < ApplicationRecord
    has_many :users_pronouns
    has_many :users_interests
    has_many :users_identities
    has_many :users_looking_fors
    has_many :users_politics
    has_many :users_statuses

    has_many :pronouns, through: :users_pronouns, dependent: :destroy
    has_many :interests, through: :users_interests, dependent: :destroy
    has_many :identities, through: :users_identities, dependent: :destroy
    has_many :looking_fors, through: :users_looking_fors, dependent: :destroy
    has_many :politics, through: :users_politics, dependent: :destroy
    has_many :statuses, through: :users_statuses, dependent: :destroy

    
    # liker has many liked_matches w/ foreign keys of the people they liked 
    has_many :liked_matches, foreign_key: :liked_id, class_name: 'Match'
    has_many :likers, through: :liked_matches, dependent: :destroy   

    has_many :liker_matches, foreign_key: :liker_id, class_name: 'Match'
    has_many :liked, through: :liker_matches, dependent: :destroy
    # define custom instance method that merges the two arrays (likers and liked) if i don't want to distinguish between who liked who and just have them all together

    has_secure_password
    validates :username, presence: true, uniqueness: true
    # validates_uniqueness_of :pronoun_ids
    # validates :password, presence: true

    def mutualMatches
        mutualMatches = []
        self.liked.map do |likedUser| 
            if likedUser.liked.include?(self)
                mutualMatches << likedUser
            end
        end
        return mutualMatches
    end

end
