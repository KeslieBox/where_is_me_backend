class CreateInterests < ActiveRecord::Migration[6.1]
  def change
    create_table :interests do |t|
      t.string :name
      t.belongs_to :current_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
