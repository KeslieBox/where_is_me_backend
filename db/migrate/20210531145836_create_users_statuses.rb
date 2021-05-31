class CreateUsersStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :users_statuses do |t|
      t.integer :user_id
      t.integer :status_id

      t.timestamps
    end
  end
end
