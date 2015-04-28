class Channel < ActiveRecord::Base
  has_many :memberships
  has_many :users, dependent: :destroy, through: :memberships
end
