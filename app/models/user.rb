class User < ActiveRecord::Base
  has_many :memberships
  has_many :channels, dependent: :destroy, through: :memberships
  validates_format_of :email, with: /\A[\w.+\-]+@[\w.+\-]+\.\w+\z/
  validates_presence_of :email
  validates_uniqueness_of :email
end
