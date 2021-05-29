class CreateLookingFors < ActiveRecord::Migration[6.1]
  def change
    create_table :looking_fors do |t|
      t.string :name
      t.belongs_to :current_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
