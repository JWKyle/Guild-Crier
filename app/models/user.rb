require 'bcrypt'
class User < ActiveRecord::Base
  include BCrypt

  has_many :comments
  has_many :woots

  validates :username, :email, :password_hash, presence: true
  validates :username, :email, uniqueness: true


  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(new_password)
    self.password == new_password
  end
end
