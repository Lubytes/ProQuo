require 'bcrypt'

class User < ApplicationRecord

  validates_presence_of :username, presence: true
  validates_presence_of :password_hash, presence: true
  validates_uniqueness_of :username
  # Username is 3 to 40 characters with letters numbers and underscores, but cannot start or end with one.
  validates_format_of :username, with: /\A[a-zA-Z0-9][a-zA-Z0-9_]{1,38}[a-zA-Z0-9]\z/
  validates_confirmation_of :password

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
