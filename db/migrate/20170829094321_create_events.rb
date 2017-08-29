class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.string :location
      t.string :money
      t.text :content
      t.references :user, foreign_key: true
      t.references :community, foreign_key: true

      t.timestamps
    end
      add_index :events, [:user_id, :created_at]
      add_index :events, [:community_id, :created_at]
  end
end
