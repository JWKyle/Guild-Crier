require 'bcrypt'
class User < ActiveRecord::Base
  include BCrypt

  has_many :comments
  has_many :woots

  validates :username, :name, presence: true


  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_type_thing = @password
  end
end
