class Story < ActiveRecord::Base
  belongs_to :user
  belongs_to :religion
  has_many :comments, :dependent => :destroy
  accepts_nested_attributes_for :comments
  mount_uploader :image, AvatarUploader
 
  validates :title, presence: true, length: { in: 6..50 }
  validates :religion_id, presence: true
  validates :content, length: { minimum: 30 }

end
