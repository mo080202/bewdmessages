class Membership < ActiveRecord::Base
  belongs_to :user
  belongs_to :channel
  has_many :messages
end
