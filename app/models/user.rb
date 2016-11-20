require 'bcrypt'

class User < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  # If a user gets destroyed, delete all props owned by them.
  has_many :props, dependent: :destroy

  validates_presence_of :username, presence: true
  validates_presence_of :password_hash, presence: true
  validates_presence_of :email, presence: true
  validates_presence_of :full_name, presence: true
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
