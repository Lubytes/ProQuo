class Prop < ApplicationRecord
  # A prop is an object.
  # This makes sure that an object has a valid user, or it wont exist.
  belongs_to :user
end
