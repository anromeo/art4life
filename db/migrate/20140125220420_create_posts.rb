class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.float :price
      t.string :address
      t.integer :donor_id
      t.integer :artist_id
      t.integer :keyword

      t.timestamps
    end
  end
end
