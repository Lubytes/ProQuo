# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Just if for some reason it is not...
ENV['RAILS_ENV'] = 'development'
