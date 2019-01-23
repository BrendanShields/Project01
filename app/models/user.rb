class User < ApplicationRecord
  acts_as_voter
  rolify :before_add => :before_add_method

  def before_add_method(role)

    after_create :assign_default_role

  def assign_default_role
    self.add_role(:newuser) if self.roles.blank?
  end

    # do something before it gets added
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :images
  has_many :posts
  has_many :replies
  has_one :charity
  has_one :donator
end
