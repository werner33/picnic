class Photo < ActiveRecord::Base
    belongs_to :photo_gallery
    has_one :picnic, through: :photo_gallery
end
