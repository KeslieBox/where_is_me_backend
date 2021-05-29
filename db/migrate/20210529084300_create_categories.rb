class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.belongs_to :users, null: false, foreign_key: true
      t.belongs_to :politics, null: false, foreign_key: true
      t.belongs_to :pronouns, null: false, foreign_key: true
      t.belongs_to :status, null: false, foreign_key: true
      t.belongs_to :identities, null: false, foreign_key: true
      t.belongs_to :looking_fors, null: false, foreign_key: true
      t.belongs_to :interests, null: false, foreign_key: true

      t.timestamps
    end
  end
end
