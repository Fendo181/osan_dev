class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :gallery_name
      t.string :hp
      t.string :tw_id
      t.string :insta_id
      t.text :content
      t.referenes :user

      t.timestamps
    end
  end
end
