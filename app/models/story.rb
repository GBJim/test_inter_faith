class Story < ActiveRecord::Base
  belongs_to :user
  belongs_to :religion
 
  mount_uploader :image, AvatarUploader

  validates :title, presence: true, length: { in: 6..30 }
  validates :religion_id, presence: true
  validates :content, length: { minimum: 30 }

end
