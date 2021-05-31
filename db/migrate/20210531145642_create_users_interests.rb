class CreateUsersInterests < ActiveRecord::Migration[6.1]
  def change
    create_table :users_interests do |t|
      t.integer :user_id
      t.integer :interest_id

      t.timestamps
    end
  end
end
