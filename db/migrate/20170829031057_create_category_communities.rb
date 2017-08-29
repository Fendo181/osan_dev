class CreateCategoryCommunities < ActiveRecord::Migration[5.1]
  def change
    create_table :category_communities do |t|
      t.integer :category_id
      t.integer :community_id

      t.timestamps
    end
  end
end
