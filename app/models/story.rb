class Story < ActiveRecord::Base
  belongs_to :user
  belongs_to :religion
 
  mount_uploader :image, AvatarUploader

end
