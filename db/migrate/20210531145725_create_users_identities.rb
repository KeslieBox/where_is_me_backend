class CreateUsersIdentities < ActiveRecord::Migration[6.1]
  def change
    create_table :users_identities do |t|
      t.integer :user_id
      t.integer :identity_id

      t.timestamps
    end
  end
end
