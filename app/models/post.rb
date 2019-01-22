class Post < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_many :replies, as: :commentable
  accepts_nested_attributes_for :replies
end
