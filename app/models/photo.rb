class Photo < ActiveRecord::Base
    
    # mount_uploader :image, ImageUploader
    
    belongs_to :photo_gallery
    has_one :picnic, through: :photo_gallery
end
