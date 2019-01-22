class Reply < ApplicationRecord
  belongs_to :commentable, polymorphic: true
end
