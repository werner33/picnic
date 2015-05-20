class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :hosted_picnics, :foreign_key => "host_id", :class_name => "Picnic"       
  has_many :invites
  has_many :picnics, through: :invites
end


# class User < ActiveRecord::Base
#       has_many :authored_posts, :foreign_key => "author_id", :class_name => "Post"
#       has_many :edited_posts, :foreign_key => "editor_id", :class_name => "Post"
# end