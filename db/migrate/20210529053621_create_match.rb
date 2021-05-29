class CreateMatch < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.integer :liked_id, foreign_key: true
      t.integer :liker_id, foreign_key: true 

      t.timestamps
    end
  end
end
