class Picnic < ActiveRecord::Base

  has_many :invites
  has_many :users, through: :invites

end
