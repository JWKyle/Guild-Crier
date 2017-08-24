class Woot < ActiveRecord::Base
  belongs_to :user
  has_many :achievements

end
