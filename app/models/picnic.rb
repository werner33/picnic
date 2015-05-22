class Picnic < ActiveRecord::Base
  
  
    
  belongs_to :host, :class_name => "User"
  has_many :invites, dependent: :destroy
  has_many :users, through: :invites
  
  
  
  accepts_nested_attributes_for :invites
  

end
