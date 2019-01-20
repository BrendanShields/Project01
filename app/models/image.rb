class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :user_image, UserImageUploader
end
