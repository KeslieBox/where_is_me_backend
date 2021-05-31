class CreateUsersPronouns < ActiveRecord::Migration[6.1]
  def change
    create_table :users_pronouns do |t|
      t.integer :user_id
      t.integer :pronoun_id

      t.timestamps
    end
  end
end
