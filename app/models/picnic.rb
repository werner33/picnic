class Picnic < ActiveRecord::Base
  
  
  belongs_to :host, :class_name => "User"
  has_many :invites
  has_many :users, through: :invites

end
