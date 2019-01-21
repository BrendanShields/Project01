class Image < ApplicationRecord
  acts_as_votable
  belongs_to :user
  mount_uploader :user_image, UserImageUploader
end
