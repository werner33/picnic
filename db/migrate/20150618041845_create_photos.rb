class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image
      t.integer :photo_gallery_id

      t.timestamps
    end
  end
end
