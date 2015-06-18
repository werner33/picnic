class AddPhotoGalleryIdToPicnic < ActiveRecord::Migration
  def change
    add_column :picnics, :photo_gallery_id, :integer
  end
end
