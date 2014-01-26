class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :pic
      t.string :pic_file_name
      t.string :description
      t.integer :post_id

      t.timestamps
    end
  end
end
