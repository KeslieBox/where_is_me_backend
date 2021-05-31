class CreateUsersPolitics < ActiveRecord::Migration[6.1]
  def change
    create_table :users_politics do |t|
      t.integer :user_id
      t.integer :politic_id

      t.timestamps
    end
  end
end
