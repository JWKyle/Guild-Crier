class Achievement < ActiveRecord::Base
  has_many :comments
  has_many :woots


end
