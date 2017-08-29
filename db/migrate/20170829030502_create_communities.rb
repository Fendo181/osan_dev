class CreateCommunities < ActiveRecord::Migration[5.1]
  def change
    create_table :communities do |t|
      t.string :name
      t.text :content
      t.string :caregory
      t.boolean :admin_allowed, default: false, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
