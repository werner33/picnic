class PhotoGallery < ActiveRecord::Base
    belongs_to :picnic
    has_many :photos
    
end
