class Interest < ApplicationRecord
  has_many :users_interests
  has_many :users, through: :users_interests
  validates_uniqueness_of :name


  def mutualInterests
    mutualInterests = []
    self.users.map do |user| 
        if user.interests.include?(self)
            mutualInterests << user
        end
    end
    return mutualInterests
end
end
