class CreateUsersLookingFors < ActiveRecord::Migration[6.1]
  def change
    create_table :users_looking_fors do |t|
      t.integer :user_id
      t.integer :looking_for_id

      t.timestamps
    end
  end
end
