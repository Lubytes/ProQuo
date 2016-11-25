class Prop < ApplicationRecord

  validates_presence_of :image
  has_attached_file :image, styles: { large:"600x600>", medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  # A prop is an object.
  # This makes sure that an object has a valid user, or it wont exist.
  belongs_to :user
end
