class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:omniauthable,
         :recoverable, :rememberable, :trackable, :validatable
  
  devise :omniauthable, :omniauth_providers => [:facebook]
  
  has_many :hosted_picnics, :foreign_key => "host_id", :class_name => "Picnic"       
  has_many :invites, :foreign_key => "user_id", :class_name => "Invite"
  has_many :picnics, through: :invites
  
  
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.first_name = auth.info.name   # assuming the user model has a name
      user.image = auth.info.image # assuming the user model has an image
    end
  end
  
end


