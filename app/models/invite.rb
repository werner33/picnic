class Invite < ActiveRecord::Base
  belongs_to :user
  belongs_to :picnic
end
