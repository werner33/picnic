class Picnic < ActiveRecord::Base
  
  mount_uploader :image, ImageUploader
    
  belongs_to :host, :class_name => "User"
  has_many :invites, dependent: :destroy
  has_many :users, through: :invites
  has_one :photo_gallery
  has_many :photos, through: :photo_gallery
  before_save :set_just_date
  after_create :create_photo_gallery
  
  
  accepts_nested_attributes_for :invites
  

  # def show_date
  #   self.date.to_s
  # end 

  private

    def set_just_date
      self.just_date = self.date.to_date
    end
  
end
