class Image < ApplicationRecord

  belongs_to :user
  acts_as_votable
  mount_uploader :user_image, UserImageUploader
  is_impressionable
  
end
