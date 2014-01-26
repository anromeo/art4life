class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.float :price
      t.string :address
      t.integer :donor_id
      t.integer :artist_id
      t.string :keyword

      t.timestamps
    end
  end
end
