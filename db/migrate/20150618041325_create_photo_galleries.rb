class CreatePhotoGalleries < ActiveRecord::Migration
  def change
    create_table :photo_galleries do |t|
      t.integer :picnic_id

      t.timestamps
    end
  end
end
