class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:omniauthable,
         :recoverable, :rememberable, :trackable, :validatable
  
  devise :omniauthable, :omniauth_providers => [:facebook]
  
  has_many :hosted_picnics, :foreign_key => "host_id", :class_name => "Picnic"       
  has_many :invites, :foreign_key => "user_id", :class_name => "Invite"
  has_many :picnics, through: :invites
end


